const std = @import("std");

fn add(a: i32, b: i32) i32 {
    return a + b;
}

fn sum(arr: []const i32) i32 {
    if (arr.len == 1) {
        return arr[0];
    }

    return arr[0] + sum(arr[1..]);
}

pub fn main() void {

    // arrays
    const numbers = [5]i32{ 1, 3, 2, 4, 5 };

    // foreach
    for (numbers) |el| {
        std.debug.print("{}\n", .{el});
    }

    const num1 = numbers[0];
    const num2 = numbers[1];
    const result = add(num1, num2);

    // print
    std.debug.print("The first two numbers are: {} and {}\n", .{ num1, num2 });
    std.debug.print("{} + {} = {}\n", .{ num1, num2, result });

    // sum
    const total = sum(&numbers);

    // print the total
    std.debug.print("Total: {}\n", .{total});
}
